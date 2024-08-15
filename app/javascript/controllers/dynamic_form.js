document.addEventListener("DOMContentLoaded", function() {
  const form = document.getElementById("add-movie-form");
  const listSelect = document.getElementById("list-id-select");

  listSelect.addEventListener("change", function() {
    const selectedListId = listSelect.value;
    if (selectedListId) {
      form.action = `/lists/${selectedListId}/bookmarks`;
    } else {
      form.action = ""; // Clear the form action if no list is selected
    }
  });
});
