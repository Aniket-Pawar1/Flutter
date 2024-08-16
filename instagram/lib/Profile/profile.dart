import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Username",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.menu,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                    height: 100,
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAlAMBIgACEQEDEQH/xAAcAAABBAMBAAAAAAAAAAAAAAAFAAMEBgECBwj/xAA7EAACAQMDAgQDBQUHBQAAAAABAgMABBEFEiEGMRMiQVFhcYEHFDKRoSMkQrHBFTNSYuHw8RZTkqLC/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAIDAQQF/8QAIREAAgIDAQEAAwEBAAAAAAAAAAECEQMSITEEFCJBURP/2gAMAwEAAhEDEQA/AOwAVuBSFbAUwGAKzis4rPFAGuKyFrbFKsAxisYralQBjFYxW1YyPegATrg/d2qpT3kcCkHv8qs/UrlLJyuSfhVLhh+8EmXsDUcj7RbHHlkBFF1IZH/DntUgRQygKG8o4NK6WFVaNW2n1qu3CXR3LFMVUexqax7M2eXReEjqLT4Et9yOMgelc71ERq5OSTVqMdywKSOXHzoXdaWz7vJXTFUcU5KTuisNh/wnNaeGQfMaIXOmyR/hXFRxDIpy61plmvkpVnxIxxspVoHsBQK24oZc6iIioQFs+oqbBNujBbjisOih1zgZpsPn1FayzqylVPND8zZ4NY3QJWE9/wAqzv8AlQoSz57Vt40w9BWbI3RhTfS30ME83sKy1zMozszWboNGEt9MOjb927ih76gy91raO/Lr+GhTQaM11gg2zqwzmq5Gg54wM54o7dTGcbSMVD8IBSMVN9kVjyNAC8WzQSGXAPqTQK7Ng4bwnHyBovrliJRIfTNUe9tvu852ORWwiRyzY3d3n3V22HFDodWmeY7/AMBqDqhdpD5855pm2DbcFhirUcodkkSccEfWhd5bqysEz2qLMZI28j5pgXsyvj+Ee9bYUQ3tpAxzSom95bE5ZeaxWDWz0ZpNwtxbpKR+IA0RaXykAGg/SpibTYSf8Io+qRH1pUuHVZFhJBJrQyyNNtxhfeiBhQAkCoqDEh4pZDxZsUwO/NaR7mJDU+flTTEj8PesaBMbnfwV3CmLnUYLa0a5u5lhhQZZ2NSZMFDu7V536v6kudX1u6N3LLEkEzJDCrnEYHGMdj2rFFuVBKaUbL91B9ooDEaPaeNb8brmTy/UL3/3zQaP7QdYhkJWeArjlDEpX6dj+tc5kv5z5Vfyc8AYFMiO4YZAfHue1V1iiG8md56f63tdSkNvfBILgttV1PlPz9qtNwg8M4rzVpfiJfIJWcIzDcVPcZ5r0tgG3AXONoxn2pZJfwpCTa6UjqG9ltS2eU3HiqJrepxTZwQG+FdA6ksWk3ADJJJrnuo6BcGUuq+vpRGiGRNMqlw8rOSWJpoXEg4zRqXTZOVdCMVGbT1XO/insTYhx3DNgEGnJ4mA3HsamQ29rCpdyCag3Mpkk8v4R2oBdIrIc+tKnDLg9qVAx2HprVbiO0SOGXPA+NXHRbu7nuwkz5XGe1Vj7OrOFrJXYbmI9a6Ja28SEMqjPwpUWS4T/wCD6UPdxHJzRA/g49qHlN0hzSzv+FIJC+8ZrVp1p5ohjtWiwqOTSNyH/Ub8VWGBgfOuBde6Tjr69hZRFBLtm3gYAQjlj9Qa7zeYSIlcVz7XrFta11Um8NSsRSJu+eVYZHrzmkc9fTf+e9JELpvpfpW8hRBPa3Mq91EgJNSeodO6PW0/s4XUME0WfLD5nX54FE9B6Ni07UYbi8mM0pJOAAFx9AP9mpNz0Vb3N7Jc2N5JasSd3hnsP61NXfpbXnhxuDR7mHqW10zlxNcR+Gy8iRCc7gflmvRm3EdUW+0WC16jsJLJC0tpA3hSbcgOzDGfbIDfnV+uPJESo5xmrwnsjnlj06D7m2SSM7l+tc+1yc2dw6ADbu9qIdQdXSadK8TRnOe9UbUOoRezl5CMU0Iu7IZZpql6EZ720fhwATVfv1WZ9sPNQb++V5QYzgZqdpTJM4bkkVSjm8A10rK21lYVFDEZwODVvuRDI/njqLLY2cnKNj4VtDKRViCTWaKSWyK5APFKsN2OldD3b2MO2ZWj9t3FdH0y9+8NhGDY9qpDWH3iNHiUt2qzdLW7QSSB1Izilj6dCTSLcQRGc+1QVb9oanuR4f0qCkZ3ljRIePg4x45qFd3awoxOO1Srk7Ys5FV545r+4MS8R/xNU7d8CqRH1DWMxMqmqXfaq8F3HMSRiQfKuhXXSkDWhVSVfHDVynqkppLvDesN3ZVxln+Qp3jTVMlvOMk0WXWL661Jombbb2kTBhOLjw8n2J9B9KJaHezWNsIljj+5gE+Ks/iEn5+oqjWfUGoaZCqfdI7iNx5RMOU+BqUOoNb6g/dI7aG0QY3SRjnFcbTSPRU0y89OSLqGo3t4/IR1RB6ZAJ/+v0o9dXojUhge1c80zUbjpnUDYxv48RhWXw3OOcnPPf8A5ozP1/oxZY7qxvbdXUbpiivHGT7kHIHPcgV044VG0cuSfWgN1RDBfTM7qBVQvdFQR5izj4CrL1Ntedlhk7njB71EtImSD9pu49TVUcMvSjPpk3i7QpPPtTkcc9i+4hgKtaXUAu9uMn5UtQW3lJGOcUxllRn1Bi/l/WobXb+IWVvyoxqNjFjKcGgcsZU4xQMqN2vHzWaj7fhSos2keiemb63uLdFjcEgc1ZYmVDkYzXGvs91Bl1JoZN6jHtXQNQ12K1vra1O7dKeMVzuTi6OqP7Ky3ePn1zWJJ0SPPrUeAh4QfcVGuI3YfKhzbHSGE1Bru7aBUOAcGpepavpHTdtHJqVwkJkP7OPu8h/yr61W5dZt9IvpY2hlkuNokCDA3AnHBJ5xiufa7fffNTkv7gs11cAqWfnYvooOcAfAV0QgvTnyTLj1N9p0i+LaadYyQsVys8jqTtPqFGa5BdTT3t3cXl3I0tyxwWY5Io0kL7gZHChBmMnkr/pQfIVDjJ3HJJ7mnpEXJs6DFY/eIopvD3w3C+MjfAjmjWk6YyAG1gPmPPwqF9kmpLeWdxpVyAz237S3z/2ycFfof0IqF1d160Ek2m9OShNhKzXS4yT7J7fP8q86Xzyc6PUj9MI49hvqkpF1KysyqYrdVJz2PJP8x+dC31Fha/dofDihZGMoXGGH+Y+vegMe2OB5ryU4ZtzEtuZiefmSfesYn1ZY4beIQ2c0oUvuBbI9CO9ehGKhGjzpzc5WWfQ2OtJHFZWk8piAUzLgIoA9STjP603rn36xHhsjrx2IxVn0Ge1sLRba0GyGFRu49T7/AJVWus71nkaVHYsCu2MHjJJyMfAUNCNFWtLhzel5DgZohLfQrJ+LimBavcEMq4BqNd6RIo3BqUQlS31tL2INQJprUhwMZNQpLaSHtzUVkbeaBkkbb0yefWlSEDkZ20qBjutjp9jaymVFRW7ZFRpYorrXYX3ZEdT/AOxHeTKuwHzqVaaEImD8h/elaTLRtFihkjWJQD6U4gEo+FD1tJSo57VNhRo48dzSLH0rvSA3U+kW2qWckRwt1EpeCVTtZWx7j0PY+9cctGuJlivUKSK4HiqeMN29fUetdnubSZrlp8nkcDPauFLK+m6vfWMrERNM6NzwpycGrI58iHd5QuSTkK3f/fwoc390PgBUwP4u9h/HGx+tQwcxNTki1QaZY2OjyR/eZY55bYPNPG5UgkE7RjuvbI9cVVfDMFuzwxb9o3MT6f8APoKJJY6jeaHIVYGHBZVL4cqB2Hw78Z+lK18OeOC1jkJjVRNMF/ibPlX8q5sCacrlZXJVLgHntb2a58GfvGCWRcELjHb371Z9O0GBrOPULaQeJJzbsDykq5yp+BxUfUGhS+t7psP400njox5yxzn+dDZtQfTZv3RjJCr+XPBx6fWugnYdTW2Ee2EFHuJfFkUj8Kj+H/yzQbU9Rkubkyc7EyFx7+pqAL2a6um2Hb4gwffBOTUi8CCMRxkeUeY+/wAKL4YTdNvH2qOcGlfXbqSCePnUa1LJaxMAexx8ecf0qPeO7nzCkMGnu2J5FKCPxMuAPlitHiXANSIruO3h2gDcaAoZ8ZgcYxSqWt5AwyyAn5UqAo9FxR/GpSJTUeKfUisOscCCttorXeBWd9AArqq7bTendRvoly8EDMgxyW7L+pFec9Su4r2+kuY4Wj8ZwzKOdreoHzNd8+0LU7fTulrk3UM0y3B8FEixu3HkHn2xmuVdJW1lddS+PGqhkAeJZPws/wAfgKG9U2Tcd5pEES6PZOYpbC8jmQkFWusHPc8FMihk82nu4GnpLGqrh1llDkn4YAroN2YLnW5J7m2t7a/Iwb9yCrtjGOPh70TtJri3dUa10KRh2uQwX/1I/rUfyUdP4j/0A2/R/VFxo9vDawWsIeP8T3QBK+gwAcfGgGnaZJYfe01SNoblZPCCSDBTHGePhXa7fUW2gu9vIcYzD2FDuptJstZsjIxCTxjduxgsB6GlxZYRk6XoZfmlrw4hrG9J4Q+4rzgn+lD7ob7dhjzA4xVvm0ye5tiqBZWRnVQzBcFcZGT7ZFA9T024c/uVu8hiQmZV75H4sD1x612NHCBNOYC4G7jJo9cWk9xa+JDauEA/vSNiD6nA/OhOlRKLtGnDQoTkSMpC89jmrfrdjcPo6gyRXEAIZJY2DY+tYvAYLtZ0Okw6eDHJLDMxDpyFVucbvX+VbPpMkis5bHwoTYP4DyYJIXBHwqauuTeZMLg1OTdmpL0GXaeE20nkVBdsntU29fxJM+pqGyimBDkbZXsKzTQfaMCsUBR6oSnAaYSnAR71hcdzzTinio7EYp5OwoApH2xXXgdLxRoQGlulA+HlbP8AOuOWF+1jeLcBA6qwDxsM7h7V6C6v0GPqTQ5tPdgkmQ8Mn+BxyPoex+dcI1jQdT01mW5s5ItpK7ipAfHfHv8AStq1QjbUrRP1XqGxnKm3hTcQMqkTLt/XFQ7HqWS2uXljtLPOfxNBk5/Oq+peKcB0KbhjBGOCO9YU4dvnUlhhVDy+ibdnW7TrnTXtkE97Cj+saQbAD8STUfUevtOW3lht5HllZCq47ZNcrzyM1urAE+WlXzRTsd/XOqos9hr8kcW1k8Qs0kjD4sMVK0S7vNX6jbL7CYmbj0HH+lVMNt5Dd6k2Wo3Fi8r20oR5YjGWxyAcdvyrpvhyUw3JrsdrqOp29tFGLeaXYoAwBg8sPiTmot7fsZXWRTGexaI7TjHcjsfrQBqe8R5PO3J7UWbQa6PsU1e6vIZHAk8NWAA7880an6PK5wcUV+zfpmWytX1W8UpNOm2GNxghO+4j0zxx7VZL2FxkjFSd2VjFUcxv+m3gQsDk0M/sWZlJq/arHI4wQard491HkKvlFYmxWkVhtPkViDSqbM85kJKmlTmHodWNOqxrFKgqbMTUmM+UUqVYBv3pqaOOYRiaNJADuUOobafcZpUq0xnm/rmeS56v1WaVssblh8gMAUHX8TUqVMSZhuxpyUYIx60qVBgwwx2J5rXnPelSoAQkZD5TXcfs50fTv+mNN1I2kJvJULNMVBOQzDj2rNKsY8PS2Oi4Bx3Gf1qJNEjdxSpUrKg26tIT3WhNxYW5BylYpUhgJlsLfefJWKVKgyj/2Q=='),
              ),
              Column(
                children: [
                  Text(
                    '84',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Post",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '84',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Post",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '84',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
