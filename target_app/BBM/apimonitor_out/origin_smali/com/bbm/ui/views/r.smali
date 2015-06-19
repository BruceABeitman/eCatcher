.class final Lcom/bbm/ui/views/r;
.super Ljava/lang/Object;
.source "EphemeralPickerPagerV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;


# direct methods
.method constructor <init>(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/views/r;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/views/r;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;

    iget-object v1, p0, Lcom/bbm/ui/views/r;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;

    invoke-static {v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->b(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)I

    invoke-virtual {v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->b()V

    return-void
.end method
