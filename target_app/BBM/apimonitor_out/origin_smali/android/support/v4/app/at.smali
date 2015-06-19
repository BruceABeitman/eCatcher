.class final Landroid/support/v4/app/at;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Landroid/support/v4/app/as;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 6

    const/high16 v2, 0x1000

    new-instance v0, Landroid/content/Intent;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
