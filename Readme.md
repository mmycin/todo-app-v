# **Todo App in V: Because Why Not?** 🚀

Welcome to the **Todo App** built with **V (Vlang)**! This project is a simple yet powerful demonstration of how V can be used to build a backend REST API with an MVC architecture, using SQLite for data storage. Whether you're here to learn V, laugh at my attempts at humor, or just procrastinate on your own todos, you're in the right place!

---

## **Why V?** 🤔

1. **Simplicity**: V is designed to be simple and easy to learn. No more wrestling with cryptic syntax or drowning in boilerplate code.
2. **Performance**: V compiles to native binaries, making it blazingly fast. Your todos will be served faster than you can say "I'll do it later."
3. **Safety**: V enforces strict safety checks, so you can focus on building features instead of debugging null pointer exceptions.
4. **Built-in ORM**: V's ORM makes database interactions a breeze. No need to write raw SQL queries (unless you want to show off).
5. **Fun**: Because who doesn't want to try a new language that's as cool as it sounds?

---

## **Features** ✨

- **Create a Todo**: Add a new todo to your list. Because life is hard, but adding todos shouldn't be.
- **List Todos**: See all your todos in one place. Perfect for realizing how much you've been procrastinating.
- **Update a Todo**: Change the title or mark a todo as completed. Because sometimes you need a second chance.
- **Delete a Todo**: Remove a todo from your list. Out of sight, out of mind!

---

## **How It Works** 🛠️

### **Tech Stack**
- **Language**: [V (Vlang)](https://vlang.io/)
- **Database**: SQLite (because it's lightweight and doesn't complain)
- **ORM**: Built-in V ORM (no external libraries needed)
- **Web Framework**: `vweb` (V's built-in web server)

### **Project Structure**
```
todo_app/
├── src/
│   ├── main.v          # Entry point
│   ├── models/         # Database models
│   ├── controllers/    # Request handlers
│   ├── views/          # JSON responses
│   └── db/             # Database connection
├── v.mod               # V module file
└── README.md           # You're reading it!
```

---

## **Setup** 🚀

### **1. Install V**
If you haven't already, install V by following the instructions on the [official website](https://vlang.io/).

### **2. Clone the Repository**
```bash
git clone git clone https://github.com/your-mmycin/todo-app-v.git
cd todo_app
```

### **3. Run the Application**
```bash
make run
```

### **4. Test the API**
Use **Postman** or **curl** to test the endpoints:

- **Create a Todo**:
  ```bash
  curl -X POST -d "title=Buy groceries" http://localhost:8080/todos
  ```

- **List Todos**:
  ```bash
  curl http://localhost:8080/todos
  ```

- **Update a Todo**:
  ```bash
  curl -X PUT -d "title=Buy milk&completed=true" http://localhost:8080/todos/1
  ```

- **Delete a Todo**:
  ```bash
  curl -X DELETE http://localhost:8080/todos/1
  ```

---

## **Why This Project?** 🤷‍♂️

- **Learn V**: If you're curious about V, this project is a great way to get started.
- **MVC Pattern**: Understand how to structure a backend application using the MVC pattern.
- **ORM**: Learn how to use V's built-in ORM to interact with a database.
- **Fun**: Because building a todo app is a rite of passage for every developer.

---

## **FAQs** ❓

### **Q: Why SQLite?**
A: Because it's lightweight, easy to set up, and doesn't require a separate server. Perfect for a todo app (and your sanity).

### **Q: Can I use this in production?**
A: Sure, if you're feeling adventurous! But remember, V is still evolving, so proceed with caution (and maybe a backup plan).

### **Q: Why is there no frontend?**
A: Because this is a backend project. If you want a frontend, feel free to build one (or just use Postman like a pro).

---

## **Contributing** 🤝

Found a bug? Have a feature request? Want to make fun of my code? Open an issue or submit a pull request. All contributions are welcome!

---

## **License** 📜

This project is licensed under the **MIT License**. Do whatever you want with it, but don't blame me if your todos start multiplying.

---

## **Final Words** 🎉

Thanks for checking out this project! Whether you're here to learn, laugh, or procrastinate, I hope you found it useful (or at least entertaining). Now go ahead and build something awesome with V!

---

**Happy Coding!** 🚀  