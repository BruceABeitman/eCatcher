.class public final Lcom/spotify/mobile/android/util/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/y;

.field private b:Lcom/spotify/mobile/android/util/ds;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/y;ILcom/spotify/mobile/android/util/ds;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/util/dr$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/dr$1;-><init>(Lcom/spotify/mobile/android/util/dr;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/dr;->e:Landroid/support/v4/app/z;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/dr;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/dr;->a:Landroid/support/v4/app/y;

    iput p3, p0, Lcom/spotify/mobile/android/util/dr;->d:I

    iput-object p4, p0, Lcom/spotify/mobile/android/util/dr;->b:Lcom/spotify/mobile/android/util/ds;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/dr;)Lcom/spotify/mobile/android/util/ds;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dr;->b:Lcom/spotify/mobile/android/util/ds;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/util/dr;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dr;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sort_order"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/dr;->a:Landroid/support/v4/app/y;

    iget v2, p0, Lcom/spotify/mobile/android/util/dr;->d:I

    iget-object v3, p0, Lcom/spotify/mobile/android/util/dr;->e:Landroid/support/v4/app/z;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method
