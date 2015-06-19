.class final Lcom/cropimage/b;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/cropimage/CropImage;


# direct methods
.method constructor <init>(Lcom/cropimage/CropImage;)V
    .registers 2

    iput-object p1, p0, Lcom/cropimage/b;->a:Lcom/cropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Save tapped"

    const-class v1, Lcom/cropimage/CropImage;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/cropimage/b;->a:Lcom/cropimage/CropImage;

    invoke-static {v0}, Lcom/cropimage/CropImage;->a(Lcom/cropimage/CropImage;)V

    return-void
.end method
