.class final Lcom/squareup/wire/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:I
.field private static final b:Ljava/util/Comparator;
.field private final c:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x8
sput v0, Lcom/squareup/wire/a;->a:I
new-instance v0, Lcom/squareup/wire/a$1;
invoke-direct {v0}, Lcom/squareup/wire/a$1;-><init>()V
sput-object v0, Lcom/squareup/wire/a;->b:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/squareup/wire/a;->c:Ljava/util/List;
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
sget v3, Lcom/squareup/wire/a;->a:I
sub-int/2addr v2, v3
invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
:try_start_1a
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_1d
.catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1d} :catch_4b
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v2
array-length v3, v2
move v1, v0
:goto_24
if-ge v1, v3, :cond_7b
aget-object v4, v2, v1
const-class v0, Lcom/squareup/wire/n;
invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/squareup/wire/n;
if-eqz v0, :cond_47
invoke-interface {v0}, Lcom/squareup/wire/n;->c()Lcom/squareup/wire/Message$Label;
move-result-object v0
sget-object v5, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
if-ne v0, v5, :cond_47
:try_start_3a
iget-object v0, p0, Lcom/squareup/wire/a;->c:Ljava/util/List;
invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v5
invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_47
.catch Ljava/lang/NoSuchFieldException; {:try_start_3a .. :try_end_47} :catch_61
:cond_47
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_24
:catch_4b
move-exception v0
new-instance v0, Ljava/lang/AssertionError;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "No message class found for builder type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:catch_61
move-exception v0
new-instance v0, Ljava/lang/AssertionError;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No builder field found for message field "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_7b
iget-object v0, p0, Lcom/squareup/wire/a;->c:Ljava/util/List;
sget-object v1, Lcom/squareup/wire/a;->b:Ljava/util/Comparator;
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
return-void
.end method
.method public final a(Lcom/squareup/wire/g;)V
.registers 8
const/4 v2, 0x0
const-string v1, ""
const/4 v0, 0x0
:try_start_4
iget-object v3, p0, Lcom/squareup/wire/a;->c:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
move v3, v0
:goto_b
if-ge v3, v4, :cond_39
iget-object v0, p0, Lcom/squareup/wire/a;->c:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/reflect/Field;
invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
if-nez v5, :cond_2e
if-nez v2, :cond_36
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
:goto_22
const-string v5, "\n  "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2e
move-object v0, v1
move-object v1, v2
add-int/lit8 v2, v3, 0x1
move v3, v2
move-object v2, v1
move-object v1, v0
goto :goto_b
:cond_36
const-string v1, "s"
goto :goto_22
:cond_39
if-eqz v2, :cond_63
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Required field"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " not set:"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catch_5a
:try_end_5a
.catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_5a} :catch_5a
move-exception v0
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "Unable to access required fields"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_63
return-void
.end method