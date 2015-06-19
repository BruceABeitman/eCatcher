.class final Lcom/instagram/android/people/widget/i;
.super Ljava/lang/Object;
.source "PeopleTagsLayout.java"
.implements Lcom/instagram/android/people/widget/m;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/instagram/model/people/b;
.field final synthetic c:Lcom/instagram/android/people/widget/PeopleTagsLayout;
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Ljava/util/List;Lcom/instagram/model/people/b;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/people/widget/i;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;
iput-object p2, p0, Lcom/instagram/android/people/widget/i;->a:Ljava/util/List;
iput-object p3, p0, Lcom/instagram/android/people/widget/i;->b:Lcom/instagram/model/people/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/people/widget/i;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;
invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsLayout;)V
iget-object v0, p0, Lcom/instagram/android/people/widget/i;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
iget-object v1, p0, Lcom/instagram/android/people/widget/i;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;
iget-object v1, p0, Lcom/instagram/android/people/widget/i;->b:Lcom/instagram/model/people/b;
invoke-virtual {v1}, Lcom/instagram/model/people/b;->size()I
move-result v1
const/4 v3, 0x3
if-ge v1, v3, :cond_27
const/4 v1, 0x1
:goto_23
invoke-static {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/android/people/widget/c;Z)V
goto :goto_b
:cond_27
const/4 v1, 0x0
goto :goto_23
:cond_29
return-void
.end method