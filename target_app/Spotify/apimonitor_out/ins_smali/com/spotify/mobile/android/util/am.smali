.class public abstract Lcom/spotify/mobile/android/util/am;
.super Landroid/widget/Filter;
.source "SourceFile"
.field private a:Landroid/support/v4/app/y;
.field private b:I
.field private c:Landroid/support/v4/app/z;
.field private d:Landroid/os/Bundle;
.method public constructor <init>(Landroid/support/v4/app/y;Landroid/support/v4/app/z;)V
.registers 4
invoke-direct {p0}, Landroid/widget/Filter;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/am;->d:Landroid/os/Bundle;
iput-object p1, p0, Lcom/spotify/mobile/android/util/am;->a:Landroid/support/v4/app/y;
const v0, 0x7f0a01b2
iput v0, p0, Lcom/spotify/mobile/android/util/am;->b:I
iput-object p2, p0, Lcom/spotify/mobile/android/util/am;->c:Landroid/support/v4/app/z;
return-void
.end method
.method public abstract a(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/util/am;->a:Landroid/support/v4/app/y;
iget v1, p0, Lcom/spotify/mobile/android/util/am;->b:I
iget-object v2, p0, Lcom/spotify/mobile/android/util/am;->d:Landroid/os/Bundle;
iget-object v3, p0, Lcom/spotify/mobile/android/util/am;->c:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
.registers 3
check-cast p1, Landroid/database/Cursor;
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/util/am;->a(Landroid/database/Cursor;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.registers 6
if-eqz p1, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/util/am;->d:Landroid/os/Bundle;
const-string v1, "filter"
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/util/am;->a:Landroid/support/v4/app/y;
iget v1, p0, Lcom/spotify/mobile/android/util/am;->b:I
iget-object v2, p0, Lcom/spotify/mobile/android/util/am;->d:Landroid/os/Bundle;
iget-object v3, p0, Lcom/spotify/mobile/android/util/am;->c:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const/4 v0, 0x0
return-object v0
.end method
.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.registers 3
return-void
.end method