.class public Lcom/twidroid/net/a/a/b;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:Ljava/lang/String; = "OAuthException"


# instance fields
.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/net/a/a/b;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/net/a/a/b;->h:I

    iput p2, p0, Lcom/twidroid/net/a/a/b;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/net/a/a/b;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/net/a/a/b;->h:I

    iput p2, p0, Lcom/twidroid/net/a/a/b;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/twidroid/net/a/a/b;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
