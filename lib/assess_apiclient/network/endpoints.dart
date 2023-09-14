class Endpoints {
  Endpoints._();

  static const String baseURL = 'https://demo.wowonder.com';

  static const int receiveTimeout = 5000;

  static const int connectionTimeout = 3000;

  static const String users = '/users';

  static const String deleteAccessToken =
      "/api/delete-access-token?access_token=";
  static const String setBrowser = "/set-browser-cookie?access_token=";
  static const String getUserData = "/api/get-user-data?access_token=";
  static const String DeleteAccessToken =
      "/api/delete-access-token?access_token=";
  static const String SetBrowser = "/set-browser-cookie?access_token=";
  static const String GetUserData = "/api/get-user-data?access_token=";
  static const String GetManyUsersData =
      "/api/get-many-users-data?access_token=";
  static const String GetUserAlbums = "/api/get-user-albums?access_token=";
  static const String CreateProduct = "/api/create-product?access_token=";
  static const String GetProducts = "/api/get-products?access_token=";
  static const String GetEvents = "/api/get-events?access_token=";
  static const String GoToEvent = "/api/go-to-event?access_token=";
  static const String InterestEvent = "/api/interest-event?access_token=";
  static const String CreateEvent = "/api/create-event?access_token=";
  static const String FollowUser = "/api/follow-user?access_token=";
  static const String FollowRequestAction =
      "/api/follow-request-action?access_token=";
  static const String BlockUser = "/api/block-user?access_token=";
  static const String PostActions = "/api/post-actions?access_token=";
  static const String LikePage = "/api/like-page?access_token=";
  static const String JoinGroup = "/api/join-group?access_token=";
  static const String CreateStory = "/api/create-story?access_token=";
  static const String DeleteStory = "/api/delete-story?access_token=";
  static const String SetChatTypingStatus =
      "/api/set-chat-typing-status?access_token=";
  static const String ChangeChatColor = "/api/change-chat-color?access_token=";
  static const String GetArticles = "/api/get-articles?access_token=";
  static const String GetGroupData = "/api/get-group-data?access_token=";
  static const String GetPageData = "/api/get-page-data?access_token=";
  static const String GetPostData = "/api/get-post-data?access_token=";
  static const String UpdateUserData = "/api/update-user-data?access_token=";
  static const String UpdateGroupData = "/api/update-group-data?access_token=";
  static const String UpdatePageData = "/api/update-page-data?access_token=";
  static const String GetMovies = "/api/get-movies?access_token=";
  static const String CreateGroup = "/api/create-group?access_token=";
  static const String CreatePage = "/api/create-page?access_token=";
  static const String GetNearbyUsers = "/api/get-nearby-users?access_token=";
  static const String GetBlockedUsers = "/api/get-blocked-users?access_token=";
  static const String GetStories = "/api/get-stories?access_token=";
  static const String GetUserStories = "/api/get-user-stories?access_token=";
  static const String DeleteConversation =
      "/api/delete-conversation?access_token=";
  static const String GetCommunity = "/api/get-community?access_token=";
  static const String GetGeneralData = "/api/get-general-data?access_token=";
  static const String GetUserSuggestions =
      "/api/get-user-suggestions?access_token=";
  static const String SendMessage = "/api/send-message?access_token=";
  static const String GetSiteSettings = "/api/get-site-settings?access_token=";
  static const String Auth = "/api/auth/";
  static const String SocialLogin = "/api/social-login";
  static const String CreateAccount = "/api/create-account/";
  static const String ResetPasswordEmail = "/api/send-reset-password-email/";
  static const String GetNewsFeedCookie =
      "/app_api.php?application=phone&type=set_c&c=";
  static const String GetNewsFeed = "/get_news_feed?user_id=";
  static const String GetNewsFeedGroup = "/get_news_feed?group_id=";
  static const String GetNewsFeedPage = "/get_news_feed?page_id=";
  static const String GetNewsFeedEvent = "/get_news_feed?event_id=";
  static const String GetNewsFeedSavedPost = "/get_news_feed?save_posts=true";
  static const String GetNewsFeedHashtag = "/get_news_feed?hashtag=";
  static const String GetNewsFeedPost = "/get_news_feed?post_id=";
  static const String GetSearch = "/api/search?access_token=";
  static const String GetActivities = "/api/get-activities?access_token=";
  static const String DeleteUser = "/api/delete-user?access_token=";
  static const String Poke = "/api/poke?access_token=";
  static const String Albums = "/api/albums?access_token=";
  static const String Gift = "/api/gift?access_token=";
  static const String GetPost = "/api/posts?access_token=";
  static const String GetPopularPost = "/api/most_liked?access_token=";
  static const String GetPostComments = "/api/comments?access_token=";
  static const String Groups = "/api/groups?access_token=";
  static const String GetFriends = "/api/get-friends?access_token=";
  static const String Events = "/api/events?access_token=";
  static const String GetUsersFriends =
      "/app_api.php?application=phone&type=get_user_list_info";
  static const String EditProduct = "/api/edit-product?access_token=";
  static const String GroupChat = "/api/group_chat?access_token=";
  static const String Reactions = "/api/get-reactions?access_token=";
  static const String TwoFactor = "/api/two-factor";
  static const String ActiveAccountSms = "/api/active_account_sms";

  static const String Funding = "/api/funding?access_token=";
  static const String Job = "/api/job?access_token=";
  static const String CommonThings = "/api/common_things?access_token=";
  static const String PageChat = "/api/page_chat?access_token=";
  static const String PollPost = "/api/vote_up?access_token=";
  static const String RatePage = "/api/rate_page?access_token=";
  static const String BoostPage = "/api/boost_page?access_token=";
  static const String PageReviews = "/api/page_reviews?access_token=";
  static const String Upgrade = "/api/upgrade?access_token=";
  static const String UpdateTwoFactor = "/api/update_two_factor?access_token=";
  static const String Games = "/api/games?access_token=";
  static const String Sessions = "/api/sessions?access_token=";
  static const String ReportComment = "/api/report_comment?access_token=";
  static const String GetGroupMembers = "/api/get_group_members?access_token=";
  static const String MakeGroupAdmin = "/api/make_group_admin?access_token=";
  static const String RemoveGroupMembers =
      "/api/delete_group_member?access_token=";
  static const String GetNotInGroupMembers =
      "/api/not_in_group_member?access_token=";
  static const String GetNotInPageMembers =
      "/api/not_in_page_member?access_token=";
  static const String MakePageAdmin = "/api/make_page_admin?access_token=";
  static const String DeleteGroup = "/api/delete_group?access_token=";
  static const String DeletePage = "/api/delete_page?access_token=";
  static const String GroupAdd = "/api/group_add?access_token=";
  static const String PageAdd = "/api/page_add?access_token=";
  static const String BlogsComment = "/api/blogs?access_token=";
  static const String MoviesComment = "/api/movies_comments?access_token=";
  static const String GetGroups = "/api/get-my-groups?access_token=";
  static const String Recommended = "/api/fetch-recommended?access_token=";
  static const String GetBlogById = "/api/get-blog-by-id?access_token=";
  static const String GetChat = "/api/get_chats?access_token=";
  static const String ApiWallet = "/api/wallet?access_token=";
  static const String ApiProfileVerify = "/api/verification?access_token=";
  static const String ApiMarket = "/api/market?access_token=";

  //static const String CreateNewAudioCall =  "/app_api.php?application=phone&type=create_audio_call";
  //static const String CreateNewVideoCall =  "/app_api.php?application=phone&type=create_video_call";
  //static const String AnswerVideoCall =  "/app_api.php?application=phone&type=video_call_answer";
  //static const String AnswerAudioCall =  "/app_api.php?application=phone&type=audio_call_answer";
  //static const String CheckForAnswer =  "/app_api.php?application=phone&type=check_for_answer";
  //static const String ApiGetUsersList =  "/app_api.php?application=phone&type=get_users_list";

  static const String ApiGetMemories = "/api/get_memories?access_token=";
  static const String ApiDownloadInfo = "/api/download_info?access_token=";
  static const String ApiUploadBankRecipe = "/api/bank?access_token=";
  static const String ApiInvitation = "/api/invitation?access_token=";
  static const String ApiMyActivities = "/api/my_activities?access_token=";
  static const String ApiOffers = "/api/offer?access_token=";
  static const String ApiSearchForPosts = "/api/search_for_posts?access_token=";
  static const String ApiNearby = "/api/nearby?access_token=";
  static const String ApiWithdraw = "/api/withdraw?access_token=";
  static const String ApiDeleteMessage = "/api/delete_message?access_token=";
  static const String ApiIsActive = "/api/is-active";
  static const String ApiAddNewPost = "/api/new_post?access_token=";
  static const String GetUserMessage = "/api/get_user_messages?access_token=";
  static const String ApiCreateLive = "/api/live?access_token=";
  static const String ApiRazorPay = "/api/razorpay?access_token=";
  static const String ApiPayStack = "/api/paystack?access_token=";
  static const String ApiCashFree = "/api/cashfree?access_token=";
  static const String ApiPaySera = "/api/paysera?access_token=";
  static const String GetPages = "/api/get-my-pages?access_token=";
  static const String GetUserDataByUsername =
      "/api/get-user-data-username?access_token=";
  static const String ReportUser = "/api/report_user?access_token=";
  static const String GetEventById = "/api/get_event_by_id?access_token=";

  static const String Stripe = "/api/stripe?access_token=";
  static const String ApiAds = "/api/ads?access_token=";
  static const String GetBoost = "/api/get_boost?access_token=";
  static const String ReportPage = "/api/report_page?access_token=";
  static const String ReportGroup = "/api/report_group?access_token=";
  static const String StopNotify = "/api/stop_notify?access_token=";
  static const String GetFriendsBirthday =
      "/api/get_friends_birthday?access_token=";
  static const String HidePost = "/api/hide_post?access_token=";
  static const String ResetPassword = "/api/reset_password";
  static const String ValidationUser = "/api/validation_user";
  static const String GetStoryById = "/api/get_story_by_id?access_token=";
  static const String GetStoryViews = "/api/get_story_views?access_token=";
  static const String ReactStory = "/api/react_story?access_token=";
  static const String GetInvites = "/api/get_invites?access_token=";

  static const String MuteChatsInfo = "/api/mute?access_token=";
  static const String GetArchivedChats =
      "/api/get_archived_chats?access_token=";
  static const String GetPinChats = "/api/get_pin_chats?access_token=";
  static const String GetPinMessage = "/api/get_pin_message?access_token=";
  static const String PinMessage = "/api/pin_message?access_token=";
  static const String ReactMessage = "/api/react_message?access_token=";

  static const String Agora = "/api/agora?access_token=";
  static const String Twilio = "/api/twilio?access_token=";
  static const String FavoriteMessage = "/api/fav_message?access_token=";
  static const String GetFavoriteMessage =
      "/api/get_fav_messages?access_token=";
  static const String ForwardMessage = "/api/forward_message?access_token=";
  static const String ListeningMessage = "/api/listening?access_token=";
  static const String CheckTypeUrl = "/api/check_type?access_token=";
  static const String GetLiveFriends = "/api/get_live_friends?access_token=";
  static const String SecurionPay = "/api/securionpay?access_token=";
  static const String IyziPay = "/api/iyzipay?access_token=";
  static const String AuthorizeNet = "/api/authorize?access_token=";
  static const String FlutteWave = "/api/fluttewave?access_token=";
  static const String AamarPay = "/api/aamarpay?access_token=";
  static const String PayUmoney = "/api/yoomoney?access_token=";
  static const String Address = "/api/address?access_token=";

  //static const String ApiSendAgoraCallAction =  "/app_api.php?application=phone&type=call_agora_actions";
  //static const String ApiCreateAgoraCallEvent =  "/app_api.php?application=phone&type=create_agora_call";
  //static const String ApiCheckForAgoraAnswer =  "/app_api.php?application=phone&type=check_agora_for_answer";

  static const String TestCashfree = "https://sandbox.cashfree.com";
  static const String ProductionCashfree = "https://api.cashfree.com";
  static const String StripeCreatePaymentIntents =
      "https://api.stripe.com/v1/payment_intents";
}
