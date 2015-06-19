.class public Lcom/twidroid/net/c/a/c;
.super Lcom/twidroid/net/c/a/b;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/location/Location;

.field h:Lcom/twidroid/model/twitter/c;


# direct methods
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Lcom/twidroid/model/twitter/c;)V
    .registers 6

    invoke-direct {p0, p1, p5}, Lcom/twidroid/net/c/a/b;-><init>(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;)V

    iput-object p2, p0, Lcom/twidroid/net/c/a/c;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/twidroid/net/c/a/c;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/twidroid/net/c/a/c;->g:Landroid/location/Location;

    return-void
.end method
