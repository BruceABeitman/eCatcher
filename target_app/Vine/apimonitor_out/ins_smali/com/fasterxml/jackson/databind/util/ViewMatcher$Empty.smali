.class final Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;
.super Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.source "ViewMatcher.java"
.implements Ljava/io/Serializable;
.field static final instance:Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;->instance:Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;-><init>()V
return-void
.end method
.method public isVisibleForView(Ljava/lang/Class;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method