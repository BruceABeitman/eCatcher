.class public Luserzoom/com/extended/UZListActivity;
.super Landroid/app/ListActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    invoke-virtual {p0}, Luserzoom/com/extended/UZListActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Luserzoom/com/a;->a(Ljava/lang/String;)V

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Luserzoom/com/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    invoke-virtual {p0}, Luserzoom/com/extended/UZListActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Luserzoom/com/a;->b(Ljava/lang/String;)V

    return-void
.end method
