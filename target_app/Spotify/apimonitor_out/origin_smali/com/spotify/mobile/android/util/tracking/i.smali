.class final Lcom/spotify/mobile/android/util/tracking/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/spotify/mobile/android/util/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/ar",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/z;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/i;->a:Landroid/support/v4/app/z;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/i;->a:Landroid/support/v4/app/z;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/z;->a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/i;->a:Landroid/support/v4/app/z;

    invoke-interface {v0, p1}, Landroid/support/v4/app/z;->a(Landroid/support/v4/content/k;)V

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/i;->b:Lcom/spotify/mobile/android/util/ar;

    invoke-virtual {p1}, Landroid/support/v4/content/k;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ar;->a(Ljava/lang/Object;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/i;->a:Landroid/support/v4/app/z;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/content/k;Ljava/lang/Object;)V

    return-void
.end method
