@def title = "About Us"

With a combination of community building, targeted
outreach, education, mentorship, and mutual support, we are addressing
[potential causes of gender under-representation](https://cs.stanford.edu/people/eroberts/cs201/projects/women-in-cs/main.html) in the Julia community. 

# Our history
Julia Gender Inclusive [was founded in June 2021](https://discourse.julialang.org/t/announcing-julia-gender-inclusive/63702) by a group of gender under-represented Julia community members (Huda, Kim, Laura, Krithika, and Xuan) to promote gender inclusivity and diversity within the Julia community. Since our founding, we have organized a wide range of activities to create community, provide mentorship, and foster discussion around gender inclusivity in Julia, including online coffee chats, [JuliaCon talks](https://www.youtube.com/watch?v=8vk_VQF6PSE) and events, Birds-of-Feather discussions, [hackathons](https://juliagenderinclusive.github.io/hackathon/), and our ["Learn Julia With Us" workshop series](https://www.youtube.com/watch?v=oTUmW8dWZws&list=PLP8iPy9hna6TbWJ-Uo-qkKRVFpHuCyivG).

# Our pledge
In the interest of fostering an open and welcoming environment, we as contributors and maintainers pledge to making participation in our project and our community a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, sex characteristics, gender (including identity and expression), level of experience, education, socio-economic status, nationality, personal appearance, race, religion, or sexual identity and orientation.

# Our standards
As part of the Julia community, we abide by the [Julia community standards](https://julialang.org/community/standards/). In addition, we strive to create a positive environment. Examples of behavior that contributes to creating a positive environment include:
- Using welcoming and inclusive language
- Giving credit where credit is due
- Being respectful of differing viewpoints and experiences
- Gracefully accepting and giving constructive feedback
- Focusing on what is positive for the community
- Showing empathy towards other community members

Examples of unacceptable behavior by participants include:
- Trolling, insulting/derogatory comments, and personal or political attacks
- Public or private harassment
- Publishing others’ private information, such as a physical or electronic address, without explicit permission
- Other conduct which could reasonably be considered inappropriate in a professional setting
- The use of sexualized language or imagery and unwelcome sexual attention or advances
- Sexualizing or ascribing gender to the Julia language. While "Julia" is a female name in some parts of the world, a programming language cannot have a gender.

# Scope
This Code of Conduct applies both within community spaces and in public spaces when an individual is representing our community. Examples of representing our community include using an official project e-mail address, posting via an official social media account, or acting as a representative at an online or offline event. 

# Attribution
This Code of Conduct is adapted from the Julia Gals code of conduct, which in turn was adapted from the [Contributor Covenant, version 1.4](https://www.contributor-covenant.org/version/1/4/code-of-conduct.html), with additions from the [Julia community standards](https://julialang.org/community/standards/).

For answers to common questions about this code of conduct, see [here](https://www.contributor-covenant.org/faq).

# Organizers

```julia:organizers
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
```

@@organizer_avatars
\textoutput{organizers}
@@
