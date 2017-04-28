class Definition
attr_reader(:define)

  define_method(:initialize) do |attributes|
    @define = attributes[:definition]
  end
end
