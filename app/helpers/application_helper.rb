module ApplicationHelper
  def elm(module_name, element_id)
    tag = <<-EOS
      <script type="text/javascript">
        Elm.embed(
          Elm.#{module_name.capitalize},
          document.querySelector("##{element_id}")
        );
      </script>
    EOS
    tag.html_safe
  end
end
