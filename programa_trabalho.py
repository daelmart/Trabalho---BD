import sqlite3
# import mysql.connector - não é utilizado
import sys

# SQLite constants
DB_NAME_SQLITE = "bd_trabalho.db"
DB_TABLES_SQLITE = "SELECT name FROM sqlite_master WHERE type='table';"

def LigarBd():
	try:
		sgbd=input('Ligação ao DB em andamento...\nCarregue ENTER para continuar')
		# Create a SQL connection to our SQLite database
		connection = sqlite3.connect(DB_NAME_SQLITE)
		# query to get tables names from SQLite database
		sqlGetDBtables=DB_TABLES_SQLITE

		# Show names of tables in database selected
		cursor = connection.cursor()
		cursor.execute(sqlGetDBtables)
		tables=cursor.fetchall()
		print("Tables in database selected:")
		for tableName in tables:
			print("   table name: "+tableName[0])
		return connection
	except (sqlite3.Error) as error:
                print("Database connect error!!!\n", error)
	
def print_result(conn, query):
	try:
		cursor = conn.cursor()
		cursor.execute(query)
		# returns a list of tuples describing the columns in a result set
		columns = cursor.description
		nCols = len(columns)
		# lista de colunas no result set
		headers = [i[0] for i in columns]
		# Print the columns header
		print("+----------------------" * nCols + "+")
		for column in headers:
			print("| %-20s " % (column), end="")
		print("|")
		print("+----------------------" * nCols + "+")
		# Print data result
		data = cursor.fetchall()
		for row in data:
			for item in row:
				print("| %-20s " % (item), end="")
			print("|")
		print("+----------------------" * nCols + "+")
		cursor.close()
	except (sqlite3.Error) as error:
		print("Database error!!!\n", error)
		
def main():
	conexao=LigarBd()
	while True:
		# sqlcmd=input("SQL Query(write 'exit' to end)>")
		sqlcmd=input("""--------------------------\n
				Sistema de Gestão ao Cliente/Fornecedor\n
				Cliente - 1\n
				Profissional - 2\n
				Registar - 3\n
				Sair - escreva "exit" \n""")
		if sqlcmd == "exit":
			sys.exit()
		print_result(conexao, sqlcmd)

# Chamar a função principal		
main()