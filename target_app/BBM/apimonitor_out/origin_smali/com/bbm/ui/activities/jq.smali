.class final Lcom/bbm/ui/activities/jq;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/FilePickerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/jq;->a:Lcom/bbm/ui/activities/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/activities/jq;->a:Lcom/bbm/ui/activities/FilePickerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->f(Lcom/bbm/ui/activities/FilePickerActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bbm/ui/activities/jq;->a:Lcom/bbm/ui/activities/FilePickerActivity;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->a(Lcom/bbm/ui/activities/FilePickerActivity;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/bbm/ui/activities/jq;->a:Lcom/bbm/ui/activities/FilePickerActivity;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->b(Lcom/bbm/ui/activities/FilePickerActivity;Ljava/lang/String;)V

    goto :goto_1f
.end method
