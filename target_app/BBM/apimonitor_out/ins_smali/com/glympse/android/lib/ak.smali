.class  Lcom/glympse/android/lib/ak;
.super Ljava/lang/Object;
.source "ContactsManager.java"
.implements Lcom/glympse/android/hal/GContactsListener;
.field private jd:Lcom/glympse/android/lib/ai;
.method public constructor <init>(Lcom/glympse/android/lib/ai;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ak;->jd:Lcom/glympse/android/lib/ai;
return-void
.end method
.method public contactsProviderUpdateComplete(Lcom/glympse/android/hal/GContactsProvider;)V
.registers 7
const/4 v1, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/ak;->jd:Lcom/glympse/android/lib/ai;
invoke-static {v0}, Lcom/glympse/android/lib/ai;->a(Lcom/glympse/android/lib/ai;)Lcom/glympse/android/hal/GVector;
move-result-object v0
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v4
move v3, v1
:goto_d
if-ge v3, v4, :cond_27
iget-object v0, p0, Lcom/glympse/android/lib/ak;->jd:Lcom/glympse/android/lib/ai;
invoke-static {v0}, Lcom/glympse/android/lib/ai;->a(Lcom/glympse/android/lib/ai;)Lcom/glympse/android/hal/GVector;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/GContactsProvider;
invoke-interface {v0}, Lcom/glympse/android/hal/GContactsProvider;->getPeople()Lcom/glympse/android/hal/GVector;
move-result-object v0
if-nez v0, :cond_2f
move v0, v1
:goto_22
add-int/lit8 v2, v3, 0x1
move v3, v2
move v2, v0
goto :goto_d
:cond_27
if-eqz v2, :cond_2e
iget-object v0, p0, Lcom/glympse/android/lib/ak;->jd:Lcom/glympse/android/lib/ai;
invoke-static {v0}, Lcom/glympse/android/lib/ai;->b(Lcom/glympse/android/lib/ai;)V
:cond_2e
return-void
:cond_2f
move v0, v2
goto :goto_22
.end method