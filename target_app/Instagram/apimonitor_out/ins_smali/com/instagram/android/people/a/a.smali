.class public final Lcom/instagram/android/people/a/a;
.super Lcom/instagram/android/feed/a/a;
.source "PhotosOfYouFeedAdapter.java"
.field private e:Z
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/people/a/a;->e:Z
return-void
.end method
.method protected final b(Lcom/instagram/feed/d/l;)Z
.registers 3
iget-boolean v0, p0, Lcom/instagram/android/people/a/a;->e:Z
if-eqz v0, :cond_14
invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/feed/d/l;)Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->X()Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
:cond_14
invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/feed/d/l;)Z
move-result v0
goto :goto_11
.end method