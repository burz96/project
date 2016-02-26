size = { 2048, 2048 }

function geti(name)
	return get(globalPropertyi(name))
end

function getf(name)
	return get(globalPropertyf(name))
end

function seti(name, val)
	set(globalPropertyi(name), val)
end

function setf(name, val)
	set(globalPropertyf(name), val)
end

foo = "sim/cockpit/radios/nav1_freq_hz"

seti(foo, 1)

function update()
	seti(foo, geti(foo) + 1)
end
