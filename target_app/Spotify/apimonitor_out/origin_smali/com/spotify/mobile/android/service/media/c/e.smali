.class public final Lcom/spotify/mobile/android/service/media/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    const/16 v2, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/media/c/e;->a:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spotify/mobile/android/service/media/c/e;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/service/media/c/e;->c:I

    iput-object p2, p0, Lcom/spotify/mobile/android/service/media/c/e;->d:Ljava/lang/String;

    iput v2, p0, Lcom/spotify/mobile/android/service/media/c/e;->f:I

    iput v2, p0, Lcom/spotify/mobile/android/service/media/c/e;->e:I

    return-void
.end method
