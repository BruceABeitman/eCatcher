.class  Lit/sephiroth/android/library/widget/n;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field private a:Landroid/os/Parcelable;
.field final synthetic b:Lit/sephiroth/android/library/widget/AdapterView;
.method constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;)V
.registers 3
iput-object p1, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Landroid/os/Parcelable;
return-void
.end method
.method public onChanged()V
.registers 3
const-string v0, "View"
const-string v1, "onChanged"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
const/4 v1, 0x1
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ai:Z
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget v1, v1, Lit/sephiroth/android/library/widget/AdapterView;->an:I
iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I
move-result v1
iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->an:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_5a
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Landroid/os/Parcelable;
if-eqz v0, :cond_5a
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I
if-nez v0, :cond_5a
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->an:I
if-lez v0, :cond_5a
const-string v0, "View"
const-string v1, "calling onRestoreInstanceState"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->a:Landroid/os/Parcelable;
invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/os/Parcelable;)V
const/4 v0, 0x0
iput-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Landroid/os/Parcelable;
:goto_4f
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->w()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->requestLayout()V
return-void
:cond_5a
const-string v0, "View"
const-string v1, "else calling rememberSyncState"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->z()V
goto :goto_4f
.end method
.method public onInvalidated()V
.registers 7
const-wide/high16 v4, -0x8000
const/4 v3, 0x0
const/4 v2, -0x1
const-string v0, "View"
const-string v1, "onInvalidated"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
const/4 v1, 0x1
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ai:Z
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->a(Lit/sephiroth/android/library/widget/AdapterView;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Landroid/os/Parcelable;
:cond_24
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget v1, v1, Lit/sephiroth/android/library/widget/AdapterView;->an:I
iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->an:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->al:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput-wide v4, v0, Lit/sephiroth/android/library/widget/AdapterView;->am:J
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput-wide v4, v0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput-boolean v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->w()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->requestLayout()V
return-void
.end method