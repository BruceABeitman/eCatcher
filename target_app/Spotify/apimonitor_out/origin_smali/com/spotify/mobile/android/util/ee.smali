.class final Lcom/spotify/mobile/android/util/ee;
.super Lcom/spotify/mobile/android/util/ec;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/ct;


# instance fields
.field private a:Lcom/spotify/mobile/android/util/cs;


# direct methods
.method private constructor <init>(Landroid/app/Service;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/ec;-><init>(B)V

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    invoke-direct {v0, p1, p0}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ee;->a:Lcom/spotify/mobile/android/util/cs;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Service;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/ee;-><init>(Landroid/app/Service;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/spotify/mobile/android/util/ee;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/util/ec;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ee;->a:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/ee;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/spotify/mobile/android/util/ec;->d()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/util/ec;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ee;->a:Lcom/spotify/mobile/android/util/cs;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ee;->a:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ee;->a:Lcom/spotify/mobile/android/util/cs;

    :cond_f
    return-void
.end method
