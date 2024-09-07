# This file was generated, do not modify it. # hide
#hideall
raw = read(`curl https://github.com/orgs/JuliaGenderInclusive/people`, String)
matches = eachmatch(r"<img.*?avatar-user.*?>", raw);
extract_avatarurl(m) = first(match(r"src=\"(.*?)\"", m.match).captures)
extract_username(m) = first(match(r"alt=\"@(.*?)\"", m.match).captures)
profileurl(username) = "http://www.github.com/$username"

function websitelink(m)
	avatarurl = extract_avatarurl(m)
	username = extract_username(m)
	profile = profileurl(username)
	"[![$username]($avatarurl)]($profile)"
end

for m in matches
	websitelink(m) |> println
end