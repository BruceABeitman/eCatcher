.class public final Landroid/support/v4/b/a;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"
.method public static a(Landroid/support/v4/b/c;)Landroid/os/Parcelable$Creator;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xd
if-lt v0, v1, :cond_9
invoke-static {p0}, Landroid/support/v4/b/e;->a(Landroid/support/v4/b/c;)Landroid/os/Parcelable$Creator;
:cond_9
new-instance v0, Landroid/support/v4/b/b;
invoke-direct {v0, p0}, Landroid/support/v4/b/b;-><init>(Landroid/support/v4/b/c;)V
return-object v0
.end method