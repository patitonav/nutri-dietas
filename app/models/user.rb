class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  SOCIAL_SECURITY_TYPES = [['Particular','PARTICULAR'],['Osde','OSDE'],['Omint','OMINT'],['Dosuba','DOSUBA'],['Galeno','GALENO'],['Swiss Medical','SWISS_MEDICAL'],['Simeco','SIMECO'],['Medicus','MEDICUS'],['Otra','OTRA']]
  SOCIAL_SECURITY_PLAN_TYPES = [['210','210'],['310','310'],['410','410'],['450','450'],['510','510'],['Plata','PLATA'],['Oro','ORO'],['Graduados','GRADUADOS'],['Alumnos','ALUMNOS'], ['Particular','PARTICULAR']]
  MARITAL_STATUS = [['Soltero','SOLTERO'],['Casado','CASADO'],['Viudo','VIUDO'],['Divorciado','DIVORCIADO']]
  SEX = [['Masculino','M'],['Femenino','F']]
  JOB_TYPE = [['Liviana','LIVIANA'],['Moderada','MODERADA'],['Pesada','PESADA']]
  JOB_HS = [['0',0],['1',1],['2',2],['3',3],['4',4],['5',5],['6',6],['7',7],['8',8],['9',9],['10',10],['11',11],['12',12],['13',13],['14',14]]
  COOKS = [['Usted','SI'],['Otro','NO']]
  BUYS = [['Usted','SI'],['Otro','NO']]
  SPORT = [[],['1',1],['2',2],['3',3],['4',4],['5',5],['6',6],['7',7]]

end
