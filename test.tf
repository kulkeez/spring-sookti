resource "local_file" "pet" {
  filename = "~/pets.txt"
  content = "I love Dogs!"
}

resource "local_file" "dog" {
  filename = "~/dog.txt"
  content = "My favorite dog is a Golden Retriever!"
}

