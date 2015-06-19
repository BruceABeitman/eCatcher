.class public abstract Lcom/twidroid/net/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field e:J

.field f:Ljava/lang/String;

.field g:Lcom/twidroid/model/twitter/c;

.field h:Landroid/app/Activity;

.field i:Landroid/widget/EditText;

.field j:Lcom/twidroid/net/c/o;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twidroid/net/c/n;->e:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/net/c/n;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/EditText;Lcom/twidroid/model/twitter/c;JLjava/lang/String;Ljava/lang/String;)Lcom/twidroid/net/c/n;
    .registers 9

    const-string v0, "TweetShrinkAPI"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/twidroid/net/c/q;

    invoke-direct {v0}, Lcom/twidroid/net/c/q;-><init>()V

    :goto_d
    iput-object p0, v0, Lcom/twidroid/net/c/n;->h:Landroid/app/Activity;

    iput-object p1, v0, Lcom/twidroid/net/c/n;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;

    iput-wide p3, v0, Lcom/twidroid/net/c/n;->e:J

    iput-object p5, v0, Lcom/twidroid/net/c/n;->f:Ljava/lang/String;

    iput-object p2, v0, Lcom/twidroid/net/c/n;->g:Lcom/twidroid/model/twitter/c;

    return-object v0

    :cond_22
    const-string v0, "Twitlonger"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lcom/twidroid/net/c/r;

    invoke-direct {v0}, Lcom/twidroid/net/c/r;-><init>()V

    goto :goto_d

    :cond_30
    new-instance v0, Lcom/twidroid/net/c/m;

    invoke-direct {v0}, Lcom/twidroid/net/c/m;-><init>()V

    goto :goto_d
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lcom/twidroid/net/c/n;)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Lcom/twidroid/net/c/o;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/c/n;->j:Lcom/twidroid/net/c/o;

    return-void
.end method

.method public abstract a(Ljava/lang/String;JLcom/twidroid/model/twitter/c;)V
.end method
