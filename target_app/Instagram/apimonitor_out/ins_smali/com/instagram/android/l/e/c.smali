.class public final Lcom/instagram/android/l/e/c;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "ContactHelper.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V
return-void
.end method
.method private static a(Lcom/instagram/android/l/e/b;Lcom/fasterxml/jackson/a/h;)V
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
invoke-static {p0}, Lcom/instagram/android/l/e/b;->b(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_12
const-string v0, "phone_numbers"
invoke-static {p0}, Lcom/instagram/android/l/e/b;->b(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
:cond_12
invoke-static {p0}, Lcom/instagram/android/l/e/b;->c(Lcom/instagram/android/l/e/b;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_21
const-string v0, "first_name"
invoke-static {p0}, Lcom/instagram/android/l/e/b;->c(Lcom/instagram/android/l/e/b;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
:cond_21
invoke-static {p0}, Lcom/instagram/android/l/e/b;->d(Lcom/instagram/android/l/e/b;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_30
const-string v0, "last_name"
invoke-static {p0}, Lcom/instagram/android/l/e/b;->d(Lcom/instagram/android/l/e/b;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
:cond_30
invoke-static {p0}, Lcom/instagram/android/l/e/b;->a(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_3f
const-string v0, "email_addresses"
invoke-static {p0}, Lcom/instagram/android/l/e/b;->a(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
:cond_3f
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
return-void
.end method
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Lcom/instagram/android/l/e/b;
invoke-static {p1, p2}, Lcom/instagram/android/l/e/c;->a(Lcom/instagram/android/l/e/b;Lcom/fasterxml/jackson/a/h;)V
return-void
.end method