.class final Lcom/spotify/mobile/android/spotlets/search/view/a$2;
.super Lcom/spotify/mobile/android/util/a;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/a;
.field private b:I
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
invoke-direct {p0}, Lcom/spotify/mobile/android/util/a;-><init>()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->length()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->b:I
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a(Landroid/text/Editable;)Ljava/lang/String;
move-result-object v1
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/a;->a:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/view/e;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/e;->a(Ljava/lang/String;)V
goto :goto_c
:cond_1c
if-eqz p1, :cond_3a
iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->b:I
invoke-interface {p1}, Landroid/text/Editable;->length()I
move-result v1
if-eq v0, v1, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a()V
invoke-interface {p1}, Landroid/text/Editable;->length()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->b:I
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$2;->b:I
if-lez v0, :cond_3b
const/4 v0, 0x1
:goto_38
iput-boolean v0, v1, Lcom/spotify/mobile/android/spotlets/search/view/a;->e:Z
:cond_3a
return-void
:cond_3b
const/4 v0, 0x0
goto :goto_38
.end method