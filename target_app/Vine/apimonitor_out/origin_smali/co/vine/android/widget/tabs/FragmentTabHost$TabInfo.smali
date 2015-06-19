.class Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
.super Lco/vine/android/widget/tabs/TabInfo;
.source "FragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/tabs/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabInfo"
.end annotation


# instance fields
.field private fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p1}, Lco/vine/android/widget/tabs/TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$102(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    return-object p1
.end method
