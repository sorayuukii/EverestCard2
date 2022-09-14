import '../../../shared/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Requieriments extends StatefulHookConsumerWidget {
  final String coinName;
  final String coinInitials;
  final String coinPrice;
  final String coinValue;
  final String coinIcon;
  const Requieriments({
    Key? key,
    required this.coinName,
    required this.coinInitials,
    required this.coinPrice,
    required this.coinValue,
    required this.coinIcon,
  }) : super(key: key);

  @override
  ConsumerState<Requieriments> createState() => _RequierimentsState();
}

class _RequierimentsState extends ConsumerState<Requieriments> {
  @override
  Widget build(BuildContext context) {
    final Statevisibility = ref.watch(visibilityProvider.state);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.coinIcon),
              minRadius: 27,
              maxRadius: 27,
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.coinInitials,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  widget.coinName,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Statevisibility.state
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.coinValue),
                      Row(
                        children: [
                          Text(
                            widget.coinPrice,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 7),
                        ],
                      )
                    ],
                  )
                : Column(
                    children: const [
                      cointainer_hide_information(
                        width: 70,
                        height: 20,
                      ),
                      SizedBox(height: 4),
                      cointainer_hide_information(
                        width: 40,
                        height: 15,
                      ),
                    ],
                  ),
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                  iconSize: 12,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class cointainer_hide_information extends StatelessWidget {
  const cointainer_hide_information(
      {Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
