.class public interface abstract Lcom/facebook/model/GraphObject;
.super Ljava/lang/Object;
.source "SourceFile"
.method public abstract asMap()Ljava/util/Map;
.end method
.method public abstract cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
.end method
.method public abstract getInnerJSONObject()Lorg/json/JSONObject;
.end method
.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method
.method public abstract getPropertyAs(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
.end method
.method public abstract getPropertyAsList(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
.end method
.method public abstract removeProperty(Ljava/lang/String;)V
.end method
.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method