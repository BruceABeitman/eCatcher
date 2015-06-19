.class final Lcom/instagram/share/tumblr/g;
.super Ljava/lang/Object;
.source "XAuthResponse.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/share/tumblr/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/share/tumblr/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/share/tumblr/g;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/share/tumblr/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/share/tumblr/g;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/share/tumblr/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/share/tumblr/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/instagram/share/tumblr/g;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/share/tumblr/g;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/share/tumblr/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/share/tumblr/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/instagram/share/tumblr/g;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/share/tumblr/g;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/share/tumblr/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/share/tumblr/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/instagram/share/tumblr/g;->c:Ljava/lang/String;

    return-object p1
.end method
