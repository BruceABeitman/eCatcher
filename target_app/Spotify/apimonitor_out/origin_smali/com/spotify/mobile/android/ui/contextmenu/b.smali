.class public final Lcom/spotify/mobile/android/ui/contextmenu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const v0, 0x7f0a013c

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_a
.end method
