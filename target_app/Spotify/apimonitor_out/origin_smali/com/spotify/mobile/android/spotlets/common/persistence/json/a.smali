.class interface abstract Lcom/spotify/mobile/android/spotlets/common/persistence/json/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    as = Ljava/util/Map;
    using = Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper$BundleDeserializer;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    as = Ljava/util/Map;
    using = Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper$BundleSerializer;
.end annotation
