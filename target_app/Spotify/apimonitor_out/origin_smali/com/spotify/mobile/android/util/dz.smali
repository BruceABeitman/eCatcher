.class public final Lcom/spotify/mobile/android/util/dz;
.super Lcom/spotify/mobile/android/util/dw;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/util/dz;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/dw;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    iput-object p3, p0, Lcom/spotify/mobile/android/util/dz;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dz;->a:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/spotify/mobile/android/util/bj;->a(Lcom/spotify/mobile/android/util/dz;J)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dz;->c:Ljava/lang/String;

    return-object v0
.end method
