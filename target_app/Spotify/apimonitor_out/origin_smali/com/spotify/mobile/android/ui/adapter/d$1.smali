.class final Lcom/spotify/mobile/android/ui/adapter/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/adapter/d;->a(Landroid/database/Cursor;I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/spotify/mobile/android/ui/adapter/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/d;I)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->b:Lcom/spotify/mobile/android/ui/adapter/d;

    iput p2, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->b:Lcom/spotify/mobile/android/ui/adapter/d;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/d;->a:Lcom/spotify/mobile/android/ui/adapter/b;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/b;->k:Lcom/spotify/mobile/android/ui/adapter/c;

    iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->a:I

    iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->a:I

    int-to-long v1, v1

    invoke-interface {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/c;->a(Landroid/view/View;J)V

    return-void
.end method
