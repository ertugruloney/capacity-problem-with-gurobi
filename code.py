import gurobipy as gp
from gurobipy import GRB
model = gp.Model("costofstock")
minorder=5
minshipment=5


price=[3,1,0.5]
demand=[0,30,	0,	0,	0	,6	,4,	4,	4,	4,	1]
mimrequi=[0,4.5,0,0,0,0.9,0.6,0.6,0.6,0.6,0.15]
Bigm=300

weeks=11
#Order amount
x = model.addVars(11,vtype=GRB.CONTINUOUS, name="x")
#if give order x>5 and X<=20  i.week y[i,0] is 1 ,other 0
#if give order X>20 and X<=30  i.week y[i,1] is 1 ,other 0
#if give order X>30  i.week y[i,2] is 1 ,other 0
y = model.addVars(3,11,vtype=GRB.BINARY, name="y")
#Inventory at warehouse end of week
Instock=model.addVars(11,vtype=GRB.CONTINUOUS, name="Instock")
#Shipment amount from supplier to warehouse
Shipmentware=model.addVars(11,vtype=GRB.CONTINUOUS, name="Shipmentware")
#if Shipment amount from supplier to warehouser  i.week z[i] is 1 ,other 0
z = model.addVars(11,vtype=GRB.BINARY, name="z")

insup=model.addVars(11,vtype=GRB.CONTINUOUS, name="insup")

constraint1= model.addConstr( Instock[0]==20 )
constraint1_1= model.addConstr( Shipmentware[0]==0 ) 
constraint2=model.addConstrs(x[i]+Instock[i-1]+Shipmentware[i-1]+insup[i-1]>=demand[i] for i in range(1,weeks))
constraint3=model.addConstrs(x[i]+Instock[i-1]+Shipmentware[i-1]-demand[i]==Shipmentware[i]+ Instock[i]+insup[i]for i in range(1,weeks))

#these is  constrait is for minimum order amount 		

constraint4=model.addConstrs(x[i]<=20*y[0,i]+30*y[1,i]+300*y[2,i]for i in range(weeks))
constraint7=model.addConstrs( y.sum("*",i)<=1 for i in range(weeks) )

#Inventory at warehouse end of week

constraint8=model.addConstrs(Instock[i]+Shipmentware[i]>=mimrequi[i] for i in range(1,weeks))
#min order qty

constraint9=model.addConstrs(x[i]>=gp.quicksum(y[j,i]*minorder for j in range(3)) for i in range(weeks) )

#MSQ
constraint10=model.addConstrs(Shipmentware[i]<=z[i]*Bigm for i in range(1,weeks) )
constraint11=model.addConstrs(Shipmentware[i]>=z[i]*minshipment for i in range(weeks) )

cosntraint12=model.addConstrs(insup[i]<=4 for i in range(weeks) )

#objective function
model.setObjective(gp.quicksum(x[i]*y[j,i]*price[j] for i in range(1,weeks) for j in range(3))+gp.quicksum(Shipmentware[i]+Instock[i]*2 for i in range(1,weeks)),GRB.MINIMIZE)
model.optimize()

model.write("costofstock.lp")

for i in range(weeks):

        print(f"\n  {x[i]} .")
       