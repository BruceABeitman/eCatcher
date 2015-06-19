.class public Lcom/twidroid/ui/themes/a;
.super Lcom/twidroid/ui/themes/r;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field private static final aT:Ljava/lang/String; = "TwidroydApkTheme"

.field private static final aU:Z = false

.field public static b:Ljava/lang/String; = null

.field public static final j:Ljava/lang/String; = "com.ubersocial.theme"

.field public static k:Landroid/content/res/Resources;


# instance fields
.field private aV:I

.field private aW:I

.field private aX:I

.field private aY:I

.field private aZ:I

.field private ba:I

.field private bb:I

.field private bc:I

.field private bd:I

.field private be:I

.field private bf:I

.field private bg:I

.field private bh:I

.field private bi:I

.field private bj:I

.field private bk:I

.field private bl:I

.field private bm:Ljava/lang/String;

.field private bn:Lcom/twidroid/ui/themes/b;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "theme_consumer_key"

    sput-object v0, Lcom/twidroid/ui/themes/a;->a:Ljava/lang/String;

    const-string v0, "theme_consumer_secret"

    sput-object v0, Lcom/twidroid/ui/themes/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 5

    invoke-direct {p0}, Lcom/twidroid/ui/themes/r;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/ui/themes/a;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/ui/themes/a;->f:Z

    const/16 v0, 0x12

    iput v0, p0, Lcom/twidroid/ui/themes/a;->g:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/twidroid/ui/themes/a;->h:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/twidroid/ui/themes/a;->i:I

    iput-object p1, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    sput-object p2, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    if-eqz v0, :cond_2c2

    const-string v0, "Apk theme"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->z:Ljava/lang/String;

    const-string v0, "ubersocial_bar_bg"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->o:I

    const-string v0, "timeline_bg"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->p:I

    const-string v0, "icon_directmessages"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aX:I

    const-string v0, "txtColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->A:I

    const-string v0, "uberBarTextColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->D:I

    const-string v0, "selectedColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->E:I

    const-string v0, "bubbleBackgroundColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->F:I

    const-string v0, "iconSepColor1"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->G:I

    const-string v0, "iconSepColor2"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->H:I

    const-string v0, "composeTweetTextColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->I:I

    const-string v0, "tweetPlainTextColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->J:I

    const-string v0, "tweetUserNameColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->K:I

    const-string v0, "tweetInvertedUserNameColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->L:I

    const-string v0, "tweetSmallTextColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->M:I

    const-string v0, "tweetLinkColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->O:I

    const-string v0, "invertedTweetLinkColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->Q:I

    const-string v0, "bubbleHelpColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->R:I

    const-string v0, "titleBarColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->S:I

    const-string v0, "tweetInvertedSmallTextColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->U:I

    const-string v0, "buttonTextColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->V:I

    const-string v0, "buttonInvertedTextColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->W:I

    const-string v0, "buttonLinkColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->X:I

    const-string v0, "buttonInvertedLinkColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->Y:I

    const-string v0, "textEditColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->Z:I

    const-string v0, "labelColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aa:I

    const-string v0, "tweetUserNameColorBubble"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ae:I

    const-string v0, "tweetInvertedUserNameColorBubble"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->af:I

    const-string v0, "selectedColorBubble"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ag:I

    const-string v0, "tweetInvertedSmallTextColorBubble"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ah:I

    const-string v0, "tweetInvertedLinkColorBubble"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ai:I

    const-string v0, "tweetPlainTextColorBubble"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aj:I

    const-string v0, "tweetSmallTextColorBubble"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ak:I

    const-string v0, "tweetLinkColorBubble"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->al:I

    const-string v0, "normalBubbleColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->am:I

    const-string v0, "mentionBubbleColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->an:I

    const-string v0, "dmBubbleColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ao:I

    const-string v0, "fromMeBubbleColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ap:I

    const-string v0, "bubbleShadeColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aq:I

    const-string v0, "pressedButtonColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ax:I

    const-string v0, "outerFocusButtonColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ay:I

    const-string v0, "allowBubbles"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/ui/themes/a;->au:Z

    const-string v0, "useSolidBubbles"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/ui/themes/a;->ab:Z

    invoke-direct {p0}, Lcom/twidroid/ui/themes/a;->U()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->P:I

    invoke-direct {p0}, Lcom/twidroid/ui/themes/a;->V()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aa:I

    invoke-static {p0}, Lcom/twidroid/d/t;->a(Lcom/twidroid/ui/themes/r;)Z

    move-result v0

    if-nez v0, :cond_2c3

    const-string v0, "bubbleBackgroundColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->F:I

    const-string v0, "bodyBackgroundColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->B:I

    const-string v0, "singleViewBackground"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->as:I

    const-string v0, "commentsBackground"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ar:I

    :goto_1a3
    invoke-direct {p0}, Lcom/twidroid/ui/themes/a;->W()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->V:I

    const-string v0, "beforeSend.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aH:Ljava/lang/String;

    const-string v0, "afterSend.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aI:Ljava/lang/String;

    const-string v0, "follow.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aJ:Ljava/lang/String;

    const-string v0, "unfollow.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aK:Ljava/lang/String;

    const-string v0, "blocked.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aL:Ljava/lang/String;

    const-string v0, "mute.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aM:Ljava/lang/String;

    const-string v0, "spam.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aN:Ljava/lang/String;

    const-string v0, "favorite.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aO:Ljava/lang/String;

    const-string v0, "retweet.mp3"

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->aP:Ljava/lang/String;

    const-string v0, "gradientSize"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ac:I

    const-string v0, "icon_timeline"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aV:I

    const-string v0, "icon_channels"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aW:I

    const-string v0, "icon_directmessages"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aX:I

    const-string v0, "icon_retweets"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aY:I

    const-string v0, "icon_favorites"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->aZ:I

    const-string v0, "icon_nearby"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->ba:I

    const-string v0, "icon_trendingtopics"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bb:I

    const-string v0, "icon_mentions"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bc:I

    const-string v0, "icon_lists"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bd:I

    const-string v0, "icon_profile"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->be:I

    const-string v0, "icon_search"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bf:I

    const-string v0, "icon_mutedusers"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bg:I

    const-string v0, "icon_publictimeline"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bh:I

    const-string v0, "icon_suggestedusers"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bi:I

    const-string v0, "icon_deals"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bj:I

    const-string v0, "icon_list"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bk:I

    const-string v0, "conversation"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->bl:I

    const-string v0, "composebg_logo"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->q:I

    const-string v0, "facebook_button"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->r:I

    const-string v0, "photo_button"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->s:I

    const-string v0, "video_button"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->t:I

    const-string v0, "thumbsdown_button"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->v:I

    const-string v0, "thumbsup_button"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->u:I

    const-string v0, "location_x"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->y:I

    const-string v0, "location_green"

    invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/themes/a;->x:I

    const-string v0, "uberBarPathGradient"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->i(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->C:[I

    const-string v0, "highlightGradient"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->i(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->N:[I

    const-string v0, "linePairs"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->i(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/a;->T:[I

    const-string v0, "theme_config"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->j(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    new-instance v1, Lcom/twidroid/ui/themes/b;

    invoke-direct {v1, v0}, Lcom/twidroid/ui/themes/b;-><init>(Landroid/content/res/XmlResourceParser;)V

    iput-object v1, p0, Lcom/twidroid/ui/themes/a;->bn:Lcom/twidroid/ui/themes/b;

    :cond_2c2
    return-void

    :cond_2c3
    iget v0, p0, Lcom/twidroid/ui/themes/a;->B:I

    iput v0, p0, Lcom/twidroid/ui/themes/a;->F:I

    goto/16 :goto_1a3
.end method

.method private U()I
    .registers 3

    const-string v0, "miniIconBarColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_d

    const v0, -0xcccccd

    :cond_d
    return v0
.end method

.method private V()I
    .registers 4

    const-string v0, "miniIconBarColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v1

    const-string v0, "labelColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, -0x100

    if-ne v1, v2, :cond_18

    const v1, -0xededec

    if-ne v0, v1, :cond_18

    const v0, -0x22221f

    :cond_18
    return v0
.end method

.method private W()I
    .registers 3

    const-string v0, "buttonTextColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    const v1, -0xc0c0d

    if-ne v0, v1, :cond_e

    const v0, -0xcccccd

    :cond_e
    return v0
.end method

.method private X()I
    .registers 3

    const-string v0, "bubbleBackgroundColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    const v1, -0xcfcfcd

    if-ne v0, v1, :cond_e

    const v0, -0xcccccd

    :cond_e
    return v0
.end method

.method private Y()I
    .registers 3

    const-string v0, "bodyBackgroundColor"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->f(Ljava/lang/String;)I

    move-result v0

    const v1, -0xcfcfcd

    if-ne v0, v1, :cond_e

    const v0, -0xcccccd

    :cond_e
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/4 v2, 0x0

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    const-string v1, "drawable"

    invoke-direct {p0, p1, v1, p2}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/4 v0, -0x1

    goto :goto_11
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ubersocial.theme."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private f(Ljava/lang/String;)I
    .registers 7

    const/4 v4, 0x0

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    sget-object v1, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v3, "color"

    invoke-direct {p0, v2, v3, p1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private g(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    sget-object v1, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v3, "bool"

    invoke-direct {p0, v2, v3, p1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private h(Ljava/lang/String;)I
    .registers 7

    const/4 v4, 0x0

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    sget-object v1, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v3, "integer"

    invoke-direct {p0, v2, v3, p1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private i(Ljava/lang/String;)[I
    .registers 7

    const/4 v4, 0x0

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    sget-object v1, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v3, "array"

    invoke-direct {p0, v2, v3, p1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_19
.end method

.method private j(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 7

    const/4 v0, 0x0

    sget-object v1, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    sget-object v2, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v4, "xml"

    invoke-direct {p0, v3, v4, p1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method public static w()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_3
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget v0, p0, Lcom/twidroid/ui/themes/a;->o:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/twidroid/ui/themes/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bn:Lcom/twidroid/ui/themes/b;

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    sget-object v0, Lcom/twidroid/ui/themes/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/themes/a;->a(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_11

    goto :goto_2

    :catch_11
    move-exception v0

    goto :goto_2
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/ui/themes/a;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->o:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->r:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->p:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->s:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->t:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->w:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->q:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->x:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->y:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->u:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->v:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->M:I

    return v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->O:I

    return v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->J:I

    return v0
.end method

.method public r()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->aV:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->B:I

    return v0
.end method

.method public t()Landroid/text/style/StyleSpan;
    .registers 3

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method

.method public u()Landroid/text/style/ForegroundColorSpan;
    .registers 3

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/twidroid/ui/themes/a;->K:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method public v()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/themes/a;->p:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public x()Ljava/util/Map;
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public y()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public z()Landroid/graphics/drawable/Drawable;
    .registers 4

    iget v0, p0, Lcom/twidroid/ui/themes/a;->aV:I

    invoke-virtual {p0}, Lcom/twidroid/ui/themes/a;->c()Ljava/lang/String;

    move-result-object v1

    :try_start_6
    const-string v2, "newsforward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "newschannel"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_16
    :goto_16
    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    const-string v2, "sitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "icon_face"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_2c
    const-string v2, "aplus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v0, p0, Lcom/twidroid/ui/themes/a;->aV:I

    goto :goto_16

    :cond_37
    const-string v2, "burda"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "bunte_web"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_48
    const-string v2, "football"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "icon_gunit"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_59
    const-string v2, "mads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "lesmads_mobileweb"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_6a
    const-string v2, "sherlock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget v0, p0, Lcom/twidroid/ui/themes/a;->aV:I

    goto :goto_16

    :cond_75
    const-string v2, "towerheist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "icon_chain"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_86
    const-string v2, "uber50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "ico_50cent"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_97
    const-string v2, "uber50deluxe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "ico_50cent"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_16

    :cond_a9
    const-string v2, "uberwarrior"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    iget v0, p0, Lcom/twidroid/ui/themes/a;->aV:I

    goto/16 :goto_16

    :cond_b5
    const-string v2, "uncleuber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    iget-object v0, p0, Lcom/twidroid/ui/themes/a;->bm:Ljava/lang/String;

    const-string v1, "icon_russell_simmons"

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/themes/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_16

    :cond_c7
    const-string v2, "snow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v0, p0, Lcom/twidroid/ui/themes/a;->aV:I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d1} :catch_d3

    goto/16 :goto_16

    :catch_d3
    move-exception v0

    iget v0, p0, Lcom/twidroid/ui/themes/a;->aV:I

    invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1a
.end method
