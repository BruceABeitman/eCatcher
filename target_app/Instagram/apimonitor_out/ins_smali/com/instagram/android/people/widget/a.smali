.class public final Lcom/instagram/android/people/widget/a;
.super Lcom/instagram/android/a/a/b;
.source "PeopleTagSearchFilter.java"
.field private final a:Lcom/instagram/android/people/widget/d;
.field private final b:Lcom/instagram/model/people/b;
.field private final c:Lcom/android/internal/util/Predicate;
.method public constructor <init>(Lcom/instagram/android/people/widget/d;Lcom/instagram/model/people/b;)V
.registers 4
invoke-direct {p0}, Lcom/instagram/android/a/a/b;-><init>()V
iput-object p1, p0, Lcom/instagram/android/people/widget/a;->a:Lcom/instagram/android/people/widget/d;
iput-object p2, p0, Lcom/instagram/android/people/widget/a;->b:Lcom/instagram/model/people/b;
new-instance v0, Lcom/instagram/android/people/widget/b;
invoke-direct {v0, p0}, Lcom/instagram/android/people/widget/b;-><init>(Lcom/instagram/android/people/widget/a;)V
iput-object v0, p0, Lcom/instagram/android/people/widget/a;->c:Lcom/android/internal/util/Predicate;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/people/widget/a;)Lcom/instagram/model/people/b;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/a;->b:Lcom/instagram/model/people/b;
return-object v0
.end method
.method protected final a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;
.registers 7
iget-object v0, p0, Lcom/instagram/android/people/widget/a;->c:Lcom/android/internal/util/Predicate;
invoke-super {p0, p1, v0}, Lcom/instagram/android/a/a/b;->a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Lcom/instagram/user/c/a;
const/4 v2, 0x0
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/people/widget/a;->c:Lcom/android/internal/util/Predicate;
invoke-static {p1, v0, v1, v2}, Lcom/instagram/user/userservice/a/i;->a(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V
return-object v0
.end method
.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.registers 5
if-eqz p2, :cond_b
iget-object v1, p0, Lcom/instagram/android/people/widget/a;->a:Lcom/instagram/android/people/widget/d;
iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {v1, v0}, Lcom/instagram/android/people/widget/d;->d(Ljava/util/List;)V
:cond_b
return-void
.end method