.class final Lcom/instagram/android/directshare/d/n;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/b;

.field final synthetic b:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/directshare/d/n;->b:Lcom/instagram/android/directshare/d/c;

    iput-object p2, p0, Lcom/instagram/android/directshare/d/n;->a:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    packed-switch p2, :pswitch_data_12

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/instagram/android/directshare/d/n;->a:Lcom/instagram/feed/d/b;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/n;->b:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0, v1}, Lcom/instagram/android/feed/comments/b/a;->b(Lcom/instagram/feed/d/b;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    :pswitch_c
    iget-object v0, p0, Lcom/instagram/android/directshare/d/n;->a:Lcom/instagram/feed/d/b;

    invoke-static {v0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    goto :goto_3

    :pswitch_data_12
    .packed-switch -0x2
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method
