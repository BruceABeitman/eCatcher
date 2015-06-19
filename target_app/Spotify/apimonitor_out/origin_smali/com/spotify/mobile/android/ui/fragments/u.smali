.class final Lcom/spotify/mobile/android/ui/fragments/u;
.super Lcom/devsmart/android/ui/HorizontalListView;
.source "SourceFile"


# instance fields
.field final synthetic g:Lcom/spotify/mobile/android/ui/fragments/s;

.field private h:Landroid/widget/AdapterView$AdapterContextMenuInfo;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/fragments/s;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/u;->g:Lcom/spotify/mobile/android/ui/fragments/s;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/devsmart/android/ui/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IJ)V
    .registers 6

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/u;->h:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/u;->showContextMenu()Z

    return-void
.end method

.method protected final getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/u;->h:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public final showContextMenuForChild(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
