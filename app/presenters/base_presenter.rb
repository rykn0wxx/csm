class BasePresenter
  def initialize(object, template)
    @object = object
    @template = template
  end

  private

  def self.presents(name)
    define_method(name) do
      @object
    end
  end

  def i_icon
    rand_num = SecureRandom.random_number(10)
    ficons = %w[fa-bank fa-archive fa-book fa-building fa-clone fa-coffee fa-cubes fa-envelope-o fa-folder-open  fa-hdd-o]
    ficons[rand_num]
  end

  def h
    @template
  end

  def method_missing(*args, &block)
    @template.send(*args, &block)
  end

end
