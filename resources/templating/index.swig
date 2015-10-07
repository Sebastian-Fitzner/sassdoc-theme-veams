{% extends "layouts/base.swig" %}

{% block content %}


  <section class="main-inner">
    {% for group_name, group in data.byGroupAndType %}
      {% for type, items in group %}
        {% if type == "mixin" %}
          {% include "partials/type_group.swig" %}
        {% endif %}
      {% endfor %}
      {% for type, items in group %}
        {% if type == "function" %}
          {% include "partials/type_group.swig" %}
        {% endif %}
      {% endfor %}
      {% for type, items in group %}
        {% if type == "variable" %}
          {% include "partials/type_group.swig" %}
        {% endif %}
      {% endfor %}
    {% endfor %}
    <footer class="footer">
      {% include "partials/footer.swig" %}
    </footer>
  </section>
{% endblock %}
