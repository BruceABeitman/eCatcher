.class final Lcom/fasterxml/jackson/databind/util/Comparators$1;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic val$defaultValue:Ljava/lang/Object;
.field final synthetic val$length:I
.method constructor <init>(Ljava/lang/Object;I)V
.registers 3
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;
iput p2, p0, Lcom/fasterxml/jackson/databind/util/Comparators$1;->val$length:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_6
move v1, v2
:goto_5
:cond_5
return v1
:cond_6
if-eqz p1, :cond_5
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-ne v0, v3, :cond_5
invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
move-result v0
iget v3, p0, Lcom/fasterxml/jackson/databind/util/Comparators$1;->val$length:I
if-ne v0, v3, :cond_5
move v0, v1
:goto_1d
iget v3, p0, Lcom/fasterxml/jackson/databind/util/Comparators$1;->val$length:I
if-ge v0, v3, :cond_38
iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;
invoke-static {v3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v3
invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v4
if-eq v3, v4, :cond_35
if-eqz v3, :cond_35
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5
:cond_35
add-int/lit8 v0, v0, 0x1
goto :goto_1d
:cond_38
move v1, v2
goto :goto_5
.end method