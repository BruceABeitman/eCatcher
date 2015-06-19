.class public Lco/vine/android/provider/ActivityCursor;
.super Landroid/database/MergeCursor;
.source "ActivityCursor.java"
.field public static final EXTRA_NUM_REQUESTS:Ljava/lang/String; = "num_reqs"
.field private mNumFollowRequests:I
.method public constructor <init>([Landroid/database/Cursor;)V
.registers 2
invoke-direct {p0, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
return-void
.end method
.method public constructor <init>([Landroid/database/Cursor;I)V
.registers 3
invoke-direct {p0, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
iput p2, p0, Lco/vine/android/provider/ActivityCursor;->mNumFollowRequests:I
return-void
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-super {p0}, Landroid/database/MergeCursor;->getExtras()Landroid/os/Bundle;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
const-string v1, "num_reqs"
iget v2, p0, Lco/vine/android/provider/ActivityCursor;->mNumFollowRequests:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object v0
.end method