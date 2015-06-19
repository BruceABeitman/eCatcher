.class final Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;
.super Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.source "ViewMatcher.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field private final _view:Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;->_view:Ljava/lang/Class;
return-void
.end method
.method public isVisibleForView(Ljava/lang/Class;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;->_view:Ljava/lang/Class;
if-eq p1, v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;->_view:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method