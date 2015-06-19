.class final Lcom/instagram/creation/base/ui/d;
.super Ljava/lang/Object;
.source "FilterPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instagram/creation/base/ui/FilterPicker;


# direct methods
.method constructor <init>(Lcom/instagram/creation/base/ui/FilterPicker;I)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/creation/base/ui/d;->b:Lcom/instagram/creation/base/ui/FilterPicker;

    iput p2, p0, Lcom/instagram/creation/base/ui/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/base/ui/d;->b:Lcom/instagram/creation/base/ui/FilterPicker;

    iget v1, p0, Lcom/instagram/creation/base/ui/d;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/base/ui/FilterPicker;->scrollTo(II)V

    return-void
.end method
