.class public final Lcom/bbm/ui/activities/wj;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/wj;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "ContactsContextSlideMenu Bottom Item Clicked"

    const-class v1, Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/wj;->a:Lcom/bbm/ui/activities/MainActivity;

    const v1, 0x7f0a007c

    const v2, 0x7f0a005c

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/MainActivity;->a(II)V

    return-void
.end method
