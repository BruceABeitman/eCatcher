.class final Lcom/spotify/mobile/android/util/ae$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/ct;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/ae;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/af;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/ae;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ae$1;->a:Lcom/spotify/mobile/android/util/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
    .registers 5

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ae$1;->a:Lcom/spotify/mobile/android/util/ae;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/ae;->a(Lcom/spotify/mobile/android/util/ae;)Lcom/spotify/mobile/android/util/af;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ae$1;->a:Lcom/spotify/mobile/android/util/ae;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/ae;->a(Lcom/spotify/mobile/android/util/ae;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ae$1;->a:Lcom/spotify/mobile/android/util/ae;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/ae;->a(Lcom/spotify/mobile/android/util/ae;)Lcom/spotify/mobile/android/util/af;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/util/af;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ae$1;->a:Lcom/spotify/mobile/android/util/ae;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ae;->b()V

    goto :goto_e
.end method
