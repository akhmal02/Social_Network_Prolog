# Social_Network_Python
A Prolog-based social network system that models friendships and derives relationships such as mutual friends, friends of friends, popularity, connections, common interests and influencers.

Tasks:
1. Define facts for individuals and their connections.
2. Write rules to define derived relationships:
   a) Mutual Friend: Create a rule mutual_friend/3 to determine if two people have a mutual friend.
      The rule should return the mutual friend's name.
   b) Friend of a Friend: Create a rule friend_of_friend/2 to determine if someone is a friend of a friend.
   c) Popular: Create a rule popular/2 to determine if someone is popular, with at least N friends.
      The rule should return the number of friends the individual has. N is a predetermined threshold (N = 4).
   d) Connected: Create a rule connected/2 to determine if two people are connected through any number of friends.
   e) Common Interests: Assume each individual has a list of interests. Create a rule common_interests/3 to determine if two people share a common interest.
      The rule should return the shared interest.
   f) Influencer: Create a rule influencer/2 to determine if someone is an influencer, with at least M friends of friends.
      The rule should return the number of friends of friends. M is a predetermined threshold (M = 5).
3. Analyze the social network:
   a) Find all pairs of individuals who have a mutual friend. List the pairs and their mutual friends.
   b) Find all individuals who are not popular. List the names of the individuals and the number of friends they have.
   c) Find all individuals who are not directly connected to a specific individual (e.g., Alice) but are reachable through any number of friends.
      List the names of the individuals.
