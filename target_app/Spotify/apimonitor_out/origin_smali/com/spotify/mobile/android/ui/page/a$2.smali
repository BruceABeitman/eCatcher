.class final Lcom/spotify/mobile/android/ui/page/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/page/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/page/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/page/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/a$2;->a:Lcom/spotify/mobile/android/ui/page/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a$2;->a:Lcom/spotify/mobile/android/ui/page/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a$2;->a:Lcom/spotify/mobile/android/ui/page/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/page/a;->a(Lcom/spotify/mobile/android/ui/page/a;)Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/page/a;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
