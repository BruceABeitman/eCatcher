.class final Lcom/bbm/ui/bp;
.super Ljava/lang/Object;
.source "EmoticonPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/EmoticonPicker;


# direct methods
.method constructor <init>(Lcom/bbm/ui/EmoticonPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/bp;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/bp;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->a(Lcom/bbm/ui/EmoticonPicker;)Lcom/bbm/ui/br;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v0, "Emoticon Clicked"

    const-class v1, Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/bp;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->a(Lcom/bbm/ui/EmoticonPicker;)Lcom/bbm/ui/br;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/bp;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->c(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/bp;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->b(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/c/e;

    iget-object v0, v0, Lcom/bbm/util/c/e;->d:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/bbm/ui/br;->a(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method
