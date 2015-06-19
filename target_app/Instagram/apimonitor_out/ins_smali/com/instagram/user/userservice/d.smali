.class public final Lcom/instagram/user/userservice/d;
.super Ljava/lang/Object;
.source "UserTrie.java"
.field private final a:[Ljava/util/Set;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x1e
new-array v0, v0, [Ljava/util/Set;
check-cast v0, [Ljava/util/Set;
iput-object v0, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;
return-void
.end method
.method private static a(Ljava/lang/CharSequence;)I
.registers 2
const/4 v0, 0x0
invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C
move-result v0
rem-int/lit8 v0, v0, 0x1e
return v0
.end method
.method private static c(Lcom/instagram/user/c/a;)Ljava/util/BitSet;
.registers 7
new-instance v1, Ljava/util/BitSet;
const/16 v0, 0x1e
invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V
invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_22
invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;)I
move-result v0
invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V
:cond_22
invoke-virtual {p0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_48
invoke-virtual {p0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v0
const-string v2, " "
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_34
if-ge v0, v3, :cond_48
aget-object v4, v2, v0
invoke-static {v4}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_45
invoke-static {v4}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;)I
move-result v4
invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V
:cond_45
add-int/lit8 v0, v0, 0x1
goto :goto_34
:cond_48
return-object v1
.end method
.method public final a()V
.registers 5
iget-object v1, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;
array-length v2, v1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_10
aget-object v3, v1, v0
if-eqz v3, :cond_d
invoke-interface {v3}, Ljava/util/Set;->clear()V
:cond_d
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_10
return-void
.end method
.method public final a(Lcom/instagram/user/c/a;)V
.registers 6
invoke-static {p1}, Lcom/instagram/user/userservice/d;->c(Lcom/instagram/user/c/a;)Ljava/util/BitSet;
move-result-object v1
const/4 v0, 0x0
invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I
move-result v0
:goto_9
if-ltz v0, :cond_28
iget-object v2, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;
aget-object v2, v2, v0
if-nez v2, :cond_1a
iget-object v2, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
aput-object v3, v2, v0
:cond_1a
iget-object v2, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;
aget-object v2, v2, v0
invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I
move-result v0
goto :goto_9
:cond_28
return-void
.end method
.method public final a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V
.registers 6
invoke-static {p1}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;)I
move-result v0
iget-object v1, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;
aget-object v1, v1, v0
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;
aget-object v0, v1, v0
invoke-static {p1, p2, v0, p3}, Lcom/instagram/user/userservice/a/i;->a(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V
:cond_11
return-void
.end method
.method public final b(Lcom/instagram/user/c/a;)V
.registers 5
invoke-static {p1}, Lcom/instagram/user/userservice/d;->c(Lcom/instagram/user/c/a;)Ljava/util/BitSet;
move-result-object v1
const/4 v0, 0x0
invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I
move-result v0
:goto_9
if-ltz v0, :cond_1b
iget-object v2, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;
aget-object v2, v2, v0
if-eqz v2, :cond_14
invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:cond_14
add-int/lit8 v0, v0, 0x1
invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I
move-result v0
goto :goto_9
:cond_1b
return-void
.end method