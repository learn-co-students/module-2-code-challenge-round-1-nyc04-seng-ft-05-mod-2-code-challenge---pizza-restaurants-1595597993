<%= form_with model: @pizza, local: true do |f| %>

    <% if @pizza.errors.any? %>
        <% @pizza.errors.full_messages.each do |message| %>
            <h2><%= message %></h2>
        <% end %>
    <% end %>

    <%= f.label :name %><br>
    <%= f.text_field :name %><br><br>

    <%= f.label :ingredients %><br>
    <%= f.text_field :ingredients %><br><br>

    <%= f.collection_select :restaurant_id, Restaurant.all, :id, :name %><br><br>

    <%= f.submit %>

<% end %> 